.class final Lcom/adcolony/sdk/cq$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->i(Lcom/adcolony/sdk/cr;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/adcolony/sdk/cq$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->as()Lcom/adcolony/sdk/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/be;->d()V

    .line 209
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$4;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/cp;->a(ILjava/util/List;)V

    .line 210
    return-void
.end method
