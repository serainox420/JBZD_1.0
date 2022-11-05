.class final Lcom/flurry/sdk/gk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gk;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gk;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/flurry/sdk/gk$4;->a:Lcom/flurry/sdk/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/flurry/sdk/gk$4;->a:Lcom/flurry/sdk/gk;

    invoke-static {v0}, Lcom/flurry/sdk/gk;->j(Lcom/flurry/sdk/gk;)V

    .line 710
    iget-object v0, p0, Lcom/flurry/sdk/gk$4;->a:Lcom/flurry/sdk/gk;

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->requestLayout()V

    .line 711
    return-void
.end method
