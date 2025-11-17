using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Moq;
using PMSBackend.API.Controllers;
using PMSBackend.Application.Commands.RewardBenefit;
using PMSBackend.Application.CommonServices;
using PMSBackend.Application.DTOs;
using PMSBackend.UnitTests.Common;
using System.Threading;

namespace PMSBackend.UnitTests.Controllers;

public class RewardBenefitControllerTests : ControllerTestBase
{
    private RewardBenefitController CreateController()
    {
        ResetMocks();
        var controller = new RewardBenefitController(MediatorMock.Object);
        return SetupController(controller);
    }

    [Fact]
    public async Task CreateRewardBenefit_ReturnsOk_WhenMediatorReturnsSuccess()
    {
        // Arrange
        var controller = CreateController();
        var dto = new RewardBenefitsDTO
        {
            ApiResponseResult = new ApiResponseResult
            {
                StatusCode = StatusCodes.Status200OK
            }
        };
        MediatorMock
            .Setup(m => m.Send(It.IsAny<CreateRewardBenefitCommand>(), It.IsAny<CancellationToken>()))
            .ReturnsAsync(dto);

        var command = new CreateRewardBenefitCommand { Title = "Discount" };

        // Act
        var result = await controller.CreateRewardBenefitAsync(command);

        // Assert
        var okResult = Assert.IsType<OkObjectResult>(result);
        Assert.Equal(dto.ApiResponseResult, okResult.Value);
    }
}

