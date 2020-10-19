#include "pch.h"
#include "CppUnitTest.h"
#include "../Snake/Snake.cpp"

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace Test
{
	TEST_CLASS(Test)
	{
	public:
		TEST_METHOD(TestInput)
		{
		const char v = 'g';
		Input(v);
		Assert::IsTrue(v != dir);
		}
        TEST_METHOD(TestLogic1)
        {
            int k[100], j[55];
            Logic(k[55], j[55]);
            Assert::IsTrue(x!=100);
        }
	};
}

