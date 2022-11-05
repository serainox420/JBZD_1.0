.class Lcom/loopme/AdController$1;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->initOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdController;


# direct methods
.method constructor <init>(Lcom/loopme/AdController;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/loopme/AdController$1;->this$0:Lcom/loopme/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/loopme/AdController$1;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$000(Lcom/loopme/AdController;)Lcom/loopme/IViewController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/loopme/IViewController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    const/4 v0, 0x0

    return v0
.end method
