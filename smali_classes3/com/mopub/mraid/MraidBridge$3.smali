.class Lcom/mopub/mraid/MraidBridge$3;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBridge;->a(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/ViewGestureDetector;

.field final synthetic b:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/ViewGestureDetector;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$3;->b:Lcom/mopub/mraid/MraidBridge;

    iput-object p2, p0, Lcom/mopub/mraid/MraidBridge$3;->a:Lcom/mopub/mobileads/ViewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge$3;->a:Lcom/mopub/mobileads/ViewGestureDetector;

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/ViewGestureDetector;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 177
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
