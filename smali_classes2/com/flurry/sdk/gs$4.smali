.class final Lcom/flurry/sdk/gs$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/gs;->o()V
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
    .line 320
    iput-object p1, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/flurry/sdk/gs$4;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gv$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gv$a;->r()V

    .line 324
    return-void
.end method
