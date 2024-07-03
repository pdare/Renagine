#include "Core/Core.h"
#include "Importer.h"
#include "Renderer.h"

int main()
{
	Core::PrintHelloWorld();
	Renderer::run();
	Importer::Import();
}