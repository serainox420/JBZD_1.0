.class final Lcom/flurry/sdk/gs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gs;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gv$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gv$a;->t()V

    .line 227
    iget-object v0, p0, Lcom/flurry/sdk/gs$1;->a:Lcom/flurry/sdk/gs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Z)Z

    .line 228
    return-void
.end method
