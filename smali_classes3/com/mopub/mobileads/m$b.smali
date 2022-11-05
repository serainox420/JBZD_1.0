.class Lcom/mopub/mobileads/m$b;
.super Ljava/lang/Object;
.source "VastWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/m;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/m;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mopub/mobileads/m$b;->a:Lcom/mopub/mobileads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 91
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/m$b;->b:Z

    goto :goto_0

    .line 94
    :pswitch_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/m$b;->b:Z

    if-eqz v0, :cond_0

    .line 97
    iput-boolean v1, p0, Lcom/mopub/mobileads/m$b;->b:Z

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/m$b;->a:Lcom/mopub/mobileads/m;

    iget-object v0, v0, Lcom/mopub/mobileads/m;->b:Lcom/mopub/mobileads/m$a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/m$b;->a:Lcom/mopub/mobileads/m;

    iget-object v0, v0, Lcom/mopub/mobileads/m;->b:Lcom/mopub/mobileads/m$a;

    invoke-interface {v0}, Lcom/mopub/mobileads/m$a;->onVastWebViewClick()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
