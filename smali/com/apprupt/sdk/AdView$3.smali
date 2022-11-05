.class Lcom/apprupt/sdk/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$3;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$3;->a:Lcom/apprupt/sdk/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/AdView;->a(Lcom/apprupt/sdk/AdView;Z)Z

    .line 305
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$3;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->c(Lcom/apprupt/sdk/AdView;)V

    .line 306
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$3;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->d(Lcom/apprupt/sdk/AdView;)V

    .line 307
    return-void
.end method
