.class synthetic Lcom/openx/dialogs/AdInterstitialDialog$4;
.super Ljava/lang/Object;
.source "AdInterstitialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/dialogs/AdInterstitialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$openx$view$AdInterstitial$ClosePosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    invoke-static {}, Lcom/openx/view/AdInterstitial$ClosePosition;->values()[Lcom/openx/view/AdInterstitial$ClosePosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/openx/dialogs/AdInterstitialDialog$4;->$SwitchMap$com$openx$view$AdInterstitial$ClosePosition:[I

    :try_start_0
    sget-object v0, Lcom/openx/dialogs/AdInterstitialDialog$4;->$SwitchMap$com$openx$view$AdInterstitial$ClosePosition:[I

    sget-object v1, Lcom/openx/view/AdInterstitial$ClosePosition;->SCREEN_TOP_LEFT:Lcom/openx/view/AdInterstitial$ClosePosition;

    invoke-virtual {v1}, Lcom/openx/view/AdInterstitial$ClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
