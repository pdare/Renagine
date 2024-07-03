#include "Core/Core.h"
#include "Importer.h"
#include "Renderer.h"

int main()
{
	Core::PrintHelloWorld();
	Renderer* render_pass = new Renderer();
	render_pass->run();
	Importer::Import();
}