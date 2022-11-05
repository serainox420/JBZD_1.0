.class Lcom/amazon/device/ads/LayoutFactory;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/LayoutFactory$1;,
        Lcom/amazon/device/ads/LayoutFactory$LayoutType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/content/Context;Lcom/amazon/device/ads/LayoutFactory$LayoutType;Ljava/lang/String;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 18
    .line 19
    sget-object v0, Lcom/amazon/device/ads/LayoutFactory$1;->$SwitchMap$com$amazon$device$ads$LayoutFactory$LayoutType:[I

    invoke-virtual {p2}, Lcom/amazon/device/ads/LayoutFactory$LayoutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 29
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    return-object v0

    .line 22
    :pswitch_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :pswitch_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
