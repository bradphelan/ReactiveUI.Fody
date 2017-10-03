rm nuget -For -Rec -ErrorAction ignore
$version=$(gitversion /output json /showvariable FullSemVer)
dotnet pack -o nuget /p:PackageId=Weingartner.ReactiveUI.Fody /p:Version=$version --configuration Release .\ReactiveUI.Fody\ReactiveUI.Fody.csproj
ls ReactiveUI.Fody\nuget\ReactiveUI.Fody.$version.nupkg

