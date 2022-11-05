.class public Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolVersionQueryResult"
.end annotation


# instance fields
.field private nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

.field private protocolVersion:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    return-void
.end method

.method static synthetic access$600(Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;)Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;)I
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    return v0
.end method

.method public static create(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 1

    .prologue
    .line 978
    new-instance v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    .line 979
    iput-object p0, v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 980
    iput p1, v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    .line 982
    return-object v0
.end method

.method public static createEmpty()Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 2

    .prologue
    .line 986
    new-instance v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    .line 987
    const/4 v1, -0x1

    iput v1, v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    .line 989
    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 1000
    iget v0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    return v0
.end method
