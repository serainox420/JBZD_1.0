.class public Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
.super Ljava/lang/Object;
.source "Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandshakeInfo"
.end annotation


# instance fields
.field public volatile activePlaylistServerBaseUrl:Ljava/lang/String;

.field public volatile activePlaylistServerName:Ljava/lang/String;

.field public volatile clientMediationTimeout:I

.field public volatile config:Ljava/lang/String;

.field public volatile exchangeTimeout:I

.field public volatile existingPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile handshakeBaseUrl:Ljava/lang/String;

.field public volatile handshakeTtl:I

.field public volatile inlineTimeout:I

.field public volatile interstitialExpirationDuration:I

.field public volatile interstitialTimeout:I

.field public volatile minInlineRefreshRate:I

.field public volatile moatEnabled:Z

.field public volatile nativeExpirationDuration:I

.field public volatile nativeTimeout:I

.field public volatile nativeTypeDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public volatile reportingBaseUrl:Ljava/lang/String;

.field public volatile reportingBatchFrequency:I

.field public volatile reportingBatchSize:I

.field public volatile sdkEnabled:Z

.field public volatile serverToServerTimeout:I

.field public volatile vastVideoSkipOffsetMax:I

.field public volatile vastVideoSkipOffsetMin:I

.field public volatile version:Ljava/lang/String;

.field public volatile vpaidAdUnitTimeout:I

.field public volatile vpaidHtmlEndCardTimeout:I

.field public volatile vpaidMaxBackButtonDelay:I

.field public volatile vpaidSkipAdTimeout:I

.field public volatile vpaidStartAdTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x1388

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->sdkEnabled:Z

    .line 96
    iput-boolean v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->moatEnabled:Z

    .line 110
    iput v1, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidStartAdTimeout:I

    .line 111
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidSkipAdTimeout:I

    .line 112
    iput v1, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidAdUnitTimeout:I

    .line 113
    iput v1, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidHtmlEndCardTimeout:I

    .line 114
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vpaidMaxBackButtonDelay:I

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->existingPackages:Ljava/util/Map;

    return-void
.end method
