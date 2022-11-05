.class Lcom/apprupt/sdk/CvExpandActivity$1;
.super Ljava/lang/Object;
.source "CvExpandActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvExpandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvExpandActivity;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvExpandActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/apprupt/sdk/CvExpandActivity$1;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$1;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvExpandActivity;->a(Lcom/apprupt/sdk/CvExpandActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$1;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-static {v0}, Lcom/apprupt/sdk/CvExpandActivity;->a(Lcom/apprupt/sdk/CvExpandActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$1;->a:Lcom/apprupt/sdk/CvExpandActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvExpandActivity;->a(Lcom/apprupt/sdk/CvExpandActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 44
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvExpandActivity$1;->a:Lcom/apprupt/sdk/CvExpandActivity;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvExpandActivity;->finish()V

    goto :goto_0
.end method
