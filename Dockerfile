FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["DotnetCoreContainer/DotnetCoreContainer.csproj", "DotnetCoreContainer/DotnetCoreContainer.csproj"]
RUN dotnet restore "DotnetCoreContainer/DotnetCoreContainer.csproj"
COPY . .
WORKDIR "/src/DotnetCoreContainer"
RUN dotnet build "DotnetCoreContainer.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "DotnetCoreContainer.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "DotnetCoreContainer.dll"]