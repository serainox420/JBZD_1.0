.class public final enum Lcom/inmobi/commons/network/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/network/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTION_ERROR:Lcom/inmobi/commons/network/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/inmobi/commons/network/ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/inmobi/commons/network/ErrorCode;

.field private static final synthetic b:[Lcom/inmobi/commons/network/ErrorCode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/inmobi/commons/network/ErrorCode;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid request"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/commons/network/ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/network/ErrorCode;->INVALID_REQUEST:Lcom/inmobi/commons/network/ErrorCode;

    .line 14
    new-instance v0, Lcom/inmobi/commons/network/ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "An internal error occurred while fetching"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/commons/network/ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/network/ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    .line 18
    new-instance v0, Lcom/inmobi/commons/network/ErrorCode;

    const-string v1, "CONNECTION_ERROR"

    const-string v2, "Socket timeout exception"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/commons/network/ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/network/ErrorCode;->CONNECTION_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    .line 24
    new-instance v0, Lcom/inmobi/commons/network/ErrorCode;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "Network failure. Check your connection"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/commons/network/ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/commons/network/ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/commons/network/ErrorCode;

    sget-object v1, Lcom/inmobi/commons/network/ErrorCode;->INVALID_REQUEST:Lcom/inmobi/commons/network/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/network/ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/network/ErrorCode;->CONNECTION_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/network/ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/commons/network/ErrorCode;->b:[Lcom/inmobi/commons/network/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/inmobi/commons/network/ErrorCode;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/network/ErrorCode;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/inmobi/commons/network/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/network/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/network/ErrorCode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/inmobi/commons/network/ErrorCode;->b:[Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v0}, [Lcom/inmobi/commons/network/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/network/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/inmobi/commons/network/ErrorCode;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/commons/network/ErrorCode;->a:Ljava/lang/String;

    return-object v0
.end method
