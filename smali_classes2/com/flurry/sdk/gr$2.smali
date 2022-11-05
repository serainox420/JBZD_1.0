.class final Lcom/flurry/sdk/gr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gr;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/flurry/sdk/gr$2;->a:Lcom/flurry/sdk/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/flurry/sdk/gr$2;->a:Lcom/flurry/sdk/gr;

    invoke-static {v0}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/flurry/sdk/gr$2;->a:Lcom/flurry/sdk/gr;

    invoke-static {v0}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gr;)Lcom/flurry/sdk/gv$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gv$b;->n()V

    .line 197
    :cond_0
    return-void
.end method
