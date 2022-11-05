.class public final enum Lcom/openx/view/AdInterstitial$ClosePosition;
.super Ljava/lang/Enum;
.source "AdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/AdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/view/AdInterstitial$ClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/view/AdInterstitial$ClosePosition;

.field public static final enum SCREEN_TOP_LEFT:Lcom/openx/view/AdInterstitial$ClosePosition;

.field public static final enum SCREEN_TOP_RIGHT:Lcom/openx/view/AdInterstitial$ClosePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/openx/view/AdInterstitial$ClosePosition;

    const-string v1, "SCREEN_TOP_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/openx/view/AdInterstitial$ClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_LEFT:Lcom/openx/view/AdInterstitial$ClosePosition;

    .line 76
    new-instance v0, Lcom/openx/view/AdInterstitial$ClosePosition;

    const-string v1, "SCREEN_TOP_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/openx/view/AdInterstitial$ClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_RIGHT:Lcom/openx/view/AdInterstitial$ClosePosition;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/openx/view/AdInterstitial$ClosePosition;

    sget-object v1, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_LEFT:Lcom/openx/view/AdInterstitial$ClosePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_RIGHT:Lcom/openx/view/AdInterstitial$ClosePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/openx/view/AdInterstitial$ClosePosition;->$VALUES:[Lcom/openx/view/AdInterstitial$ClosePosition;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/view/AdInterstitial$ClosePosition;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/openx/view/AdInterstitial$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/view/AdInterstitial$ClosePosition;

    return-object v0
.end method

.method public static values()[Lcom/openx/view/AdInterstitial$ClosePosition;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/openx/view/AdInterstitial$ClosePosition;->$VALUES:[Lcom/openx/view/AdInterstitial$ClosePosition;

    invoke-virtual {v0}, [Lcom/openx/view/AdInterstitial$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/view/AdInterstitial$ClosePosition;

    return-object v0
.end method
