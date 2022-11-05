.class public final enum Lcom/openx/model/AdType;
.super Ljava/lang/Enum;
.source "AdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/model/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/model/AdType;

.field public static final enum BANNER:Lcom/openx/model/AdType;

.field public static final enum INTERSTITIAL:Lcom/openx/model/AdType;

.field public static final enum MRAID:Lcom/openx/model/AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/openx/model/AdType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v2}, Lcom/openx/model/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    .line 6
    new-instance v0, Lcom/openx/model/AdType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/openx/model/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    .line 7
    new-instance v0, Lcom/openx/model/AdType;

    const-string v1, "MRAID"

    invoke-direct {v0, v1, v4}, Lcom/openx/model/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/AdType;->MRAID:Lcom/openx/model/AdType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/model/AdType;

    sget-object v1, Lcom/openx/model/AdType;->BANNER:Lcom/openx/model/AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/model/AdType;->INTERSTITIAL:Lcom/openx/model/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/model/AdType;->MRAID:Lcom/openx/model/AdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/model/AdType;->$VALUES:[Lcom/openx/model/AdType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/model/AdType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/openx/model/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/model/AdType;

    return-object v0
.end method

.method public static values()[Lcom/openx/model/AdType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/openx/model/AdType;->$VALUES:[Lcom/openx/model/AdType;

    invoke-virtual {v0}, [Lcom/openx/model/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/model/AdType;

    return-object v0
.end method
