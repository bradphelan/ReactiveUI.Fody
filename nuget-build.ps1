rm ReactiveUI.Fody\nuget -For -Rec -ErrorAction ignore
$version=$(gitversion /output json /showvariable FullSemVer)
dotnet pack -o nuget /p:PackageId=Weingartner.ReactiveUI.Fody /p:Version=$version --configuration Release .\ReactiveUI.Fody.Helpers.Net45\ReactiveUI.Fody.Helpers.Net45.csproj
ls ReactiveUI.Fody.Helpers.Net45\nuget\Weingartner.ReactiveUI.Fody.$version.nupkg

