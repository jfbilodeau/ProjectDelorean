
using Xunit;
using ProjectDelorean.Lib;

namespace ProjectDelorean.Test
{
    public class Class1Tests
    {
        [Fact]
        public void SampleTest_ShouldPass()
        {
            // Arrange
            var obj = new Class1();

            // Act & Assert
            Assert.NotNull(obj);
        }

        [Fact]
        public void AnotherTest_ShouldFail()
        {
            // Arrange
            var obj = new Class1();

            // Act & Assert
            Assert.IsType<string>(obj);
        }
	}
}
