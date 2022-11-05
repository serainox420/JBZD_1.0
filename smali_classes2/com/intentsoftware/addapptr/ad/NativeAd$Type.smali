.class public final enum Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
.super Ljava/lang/Enum;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/ad/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/ad/NativeAd$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

.field public static final enum APP_INSTALL:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

.field public static final enum CONTENT:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

.field public static final enum OTHER:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

.field public static final enum UNKNOWN:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

.field public static final enum VIDEO:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    const-string v1, "APP_INSTALL"

    invoke-direct {v0, v1, v2}, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->APP_INSTALL:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 33
    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1, v3}, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->CONTENT:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 34
    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->VIDEO:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 35
    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->OTHER:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 36
    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->UNKNOWN:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->APP_INSTALL:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->CONTENT:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->VIDEO:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->OTHER:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->UNKNOWN:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->$VALUES:[Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/ad/NativeAd$Type;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->$VALUES:[Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    return-object v0
.end method
