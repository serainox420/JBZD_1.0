.class final Lcom/flurry/sdk/gh$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gh;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/flurry/sdk/gh$3;->a:Lcom/flurry/sdk/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/flurry/sdk/gh$3;->a:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->y()V

    .line 358
    iget-object v0, p0, Lcom/flurry/sdk/gh$3;->a:Lcom/flurry/sdk/gh;

    invoke-static {v0}, Lcom/flurry/sdk/gh;->c(Lcom/flurry/sdk/gh;)Lcom/flurry/sdk/r;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/x;

    .line 1691
    iget-object v0, v0, Lcom/flurry/sdk/x;->p:Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Lcom/flurry/sdk/gj;->n()V

    .line 359
    return-void
.end method
