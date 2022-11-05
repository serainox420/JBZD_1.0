.class Lcom/inmobi/re/controller/util/AVPlayer$2;
.super Ljava/lang/Object;
.source "AVPlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/controller/util/AVPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/util/AVPlayer;


# direct methods
.method constructor <init>(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer$2;->a:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
