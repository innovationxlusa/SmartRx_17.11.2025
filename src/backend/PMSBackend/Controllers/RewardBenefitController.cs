using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PMSBackend.Application.Commands.RewardBenefit;
using PMSBackend.Application.CommonServices;
using PMSBackend.Application.Queries.RewardBenefit;
using System;
using System.Threading.Tasks;

namespace PMSBackend.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize] // Require authentication for all reward benefit endpoints
    public class RewardBenefitController : ControllerBase
    {
        private readonly IMediator _mediator;

        public RewardBenefitController(IMediator mediator)
        {
            _mediator = mediator;
        }

        /// <summary>
        /// Create a new reward benefit
        /// </summary>
        [HttpPost("CreateRewardBenefit")]
        [ProducesDefaultResponseType(typeof(ApiResponseResult))]
        public async Task<IActionResult> CreateRewardBenefitAsync([FromBody] CreateRewardBenefitCommand command)
        {
            try
            {
                if (command == null)
                {
                    return BadRequest(new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 400,
                        Status = "Failed",
                        Message = "Reward benefit details not found"
                    });
                }

                if (!ModelState.IsValid)
                {
                    return BadRequest(new ApiResponseResult
                    {
                        Data = ModelState,
                        StatusCode = 400,
                        Status = "Failed",
                        Message = "Invalid reward benefit data"
                    });
                }

                var result = await _mediator.Send(command);

                if (result.ApiResponseResult?.StatusCode != StatusCodes.Status200OK)
                {
                    return StatusCode(result.ApiResponseResult?.StatusCode ?? 500, result.ApiResponseResult);
                }

                return Ok(result.ApiResponseResult);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponseResult
                {
                    Data = null,
                    StatusCode = 500,
                    Status = "Error",
                    Message = $"An error occurred while creating reward benefit: {ex.Message}"
                });
            }
        }

        /// <summary>
        /// Update an existing reward benefit
        /// </summary>
        [HttpPut("UpdateRewardBenefit")]
        [ProducesDefaultResponseType(typeof(ApiResponseResult))]
        public async Task<IActionResult> UpdateRewardBenefitAsync([FromBody] UpdateRewardBenefitCommand command)
        {
            try
            {
                if (command == null)
                {
                    return BadRequest(new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 400,
                        Status = "Failed",
                        Message = "Reward benefit details not found"
                    });
                }

                if (!ModelState.IsValid)
                {
                    return BadRequest(new ApiResponseResult
                    {
                        Data = ModelState,
                        StatusCode = 400,
                        Status = "Failed",
                        Message = "Invalid reward benefit data"
                    });
                }

                var result = await _mediator.Send(command);

                if (result.ApiResponseResult?.StatusCode != 200)
                {
                    return StatusCode(result.ApiResponseResult?.StatusCode ?? 500, result.ApiResponseResult);
                }

                return Ok(result.ApiResponseResult);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponseResult
                {
                    Data = null,
                    StatusCode = 500,
                    Status = "Error",
                    Message = $"An error occurred while updating reward benefit: {ex.Message}"
                });
            }
        }

        /// <summary>
        /// Delete a reward benefit by ID
        /// </summary>
        [HttpDelete("DeleteRewardBenefit/{id}")]
        [ProducesDefaultResponseType(typeof(ApiResponseResult))]
        public async Task<IActionResult> DeleteRewardBenefitAsync(long id)
        {
            try
            {
                var command = new DeleteRewardBenefitCommand { Id = id };
                var result = await _mediator.Send(command);

                if (!result)
                {
                    return NotFound(new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 404,
                        Status = "Failed",
                        Message = $"Reward benefit with ID {id} not found"
                    });
                }

                return Ok(new ApiResponseResult
                {
                    Data = result,
                    StatusCode = 200,
                    Status = "Success",
                    Message = "Reward benefit deleted successfully"
                });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponseResult
                {
                    Data = null,
                    StatusCode = 500,
                    Status = "Error",
                    Message = $"An error occurred while deleting reward benefit: {ex.Message}"
                });
            }
        }

        /// <summary>
        /// Get a reward benefit by ID
        /// </summary>
        [HttpGet("GetRewardBenefitById/{id}")]
        [ProducesDefaultResponseType(typeof(ApiResponseResult))]
        public async Task<IActionResult> GetRewardBenefitByIdAsync(long id)
        {
            try
            {
                var query = new GetRewardBenefitByIdQuery { Id = id };
                var result = await _mediator.Send(query);

                if (result == null)
                {
                    return NotFound(new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 404,
                        Status = "Failed",
                        Message = $"Reward benefit with ID {id} not found"
                    });
                }

                return Ok(new ApiResponseResult
                {
                    Data = result,
                    StatusCode = 200,
                    Status = "Success",
                    Message = "Reward benefit retrieved successfully"
                });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponseResult
                {
                    Data = null,
                    StatusCode = 500,
                    Status = "Error",
                    Message = $"An error occurred while retrieving reward benefit: {ex.Message}"
                });
            }
        }

        /// <summary>
        /// Get all reward benefits with pagination
        /// </summary>
        [HttpGet("GetAllRewardBenefits")]
        [ProducesDefaultResponseType(typeof(ApiResponseResult))]
        public async Task<IActionResult> GetAllRewardBenefitsAsync(
            [FromQuery] int pageNumber = 1,
            [FromQuery] int pageSize = 10,
            [FromQuery] string? sortBy = "CreatedDate",
            [FromQuery] string? sortDirection = "desc")
        {
            try
            {
                var query = new GetAllRewardBenefitsQuery
                {
                    PageNumber = pageNumber,
                    PageSize = pageSize,
                    SortBy = sortBy,
                    SortDirection = sortDirection
                };

                var result = await _mediator.Send(query);

                if (result == null || result!.Data.Count <= 0)
                {
                    return NotFound(new ApiResponseResult
                    {
                        Data = null,
                        StatusCode = 404,
                        Status = "Failed",
                        Message = $"No reward benefit found"
                    });
                }
                return Ok(new ApiResponseResult
                {
                    Data = result,
                    StatusCode = 200,
                    Status = "Success",
                    Message = "Reward benefits retrieved successfully"
                });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new ApiResponseResult
                {
                    Data = null,
                    StatusCode = 500,
                    Status = "Error",
                    Message = $"An error occurred while retrieving reward benefits: {ex.Message}"
                });
            }
        }
    }
}

