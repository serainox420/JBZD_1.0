.class public final enum Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;
.super Ljava/lang/Enum;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/interstitial/Interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "InterstitialStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IS_NOT_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

.field public static final enum IS_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

.field private static final synthetic a:[Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    const-string v1, "IS_READY"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    .line 78
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    const-string v1, "IS_NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_NOT_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    sget-object v1, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_NOT_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->a:[Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->a:[Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    invoke-virtual {v0}, [Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    return-object v0
.end method
