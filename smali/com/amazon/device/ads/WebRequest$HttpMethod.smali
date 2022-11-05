.class public final enum Lcom/amazon/device/ads/WebRequest$HttpMethod;
.super Ljava/lang/Enum;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/WebRequest$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/WebRequest$HttpMethod;

.field public static final enum GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

.field public static final enum POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;


# instance fields
.field private final methodString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 817
    new-instance v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/device/ads/WebRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .line 822
    new-instance v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/device/ads/WebRequest$HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .line 811
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/device/ads/WebRequest$HttpMethod;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->$VALUES:[Lcom/amazon/device/ads/WebRequest$HttpMethod;

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
    .line 831
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 832
    iput-object p3, p0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->methodString:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/WebRequest$HttpMethod;
    .locals 1

    .prologue
    .line 811
    const-class v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/WebRequest$HttpMethod;
    .locals 1

    .prologue
    .line 811
    sget-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->$VALUES:[Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/WebRequest$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/WebRequest$HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->methodString:Ljava/lang/String;

    return-object v0
.end method
