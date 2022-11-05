.class Lcom/apprupt/sdk/CvTestView$1;
.super Ljava/lang/Object;
.source "CvTestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvTestView;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvTestView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvTestView;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/apprupt/sdk/CvTestView$1;->a:Lcom/apprupt/sdk/CvTestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apprupt/sdk/CvTestView$1;->a:Lcom/apprupt/sdk/CvTestView;

    iget-object v0, v0, Lcom/apprupt/sdk/CvTestView;->a:Lcom/apprupt/sdk/CvTestView$Listener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/apprupt/sdk/CvTestView$1;->a:Lcom/apprupt/sdk/CvTestView;

    iget-object v0, v0, Lcom/apprupt/sdk/CvTestView;->a:Lcom/apprupt/sdk/CvTestView$Listener;

    invoke-interface {v0}, Lcom/apprupt/sdk/CvTestView$Listener;->a()V

    .line 37
    :cond_0
    return-void
.end method
