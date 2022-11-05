.class Lcom/pubmatic/sdk/banner/mraid/WebView$TouchListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/mraid/WebView$TouchListener;->this$0:Lcom/pubmatic/sdk/banner/mraid/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/mraid/WebView;Lcom/pubmatic/sdk/banner/mraid/WebView$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/mraid/WebView$TouchListener;-><init>(Lcom/pubmatic/sdk/banner/mraid/WebView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 117
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
