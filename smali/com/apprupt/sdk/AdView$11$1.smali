.class Lcom/apprupt/sdk/AdView$11$1;
.super Ljava/util/TimerTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView$11;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView$11;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$11$1;->a:Lcom/apprupt/sdk/AdView$11;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 643
    new-instance v0, Lcom/apprupt/sdk/AdView$11$1$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/AdView$11$1$1;-><init>(Lcom/apprupt/sdk/AdView$11$1;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 657
    return-void
.end method
