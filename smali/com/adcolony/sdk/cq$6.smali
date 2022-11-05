.class final Lcom/adcolony/sdk/cq$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->k(Lcom/adcolony/sdk/cr;I)V
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
    .line 225
    iput p1, p0, Lcom/adcolony/sdk/cq$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "SuperUserCommand"

    .line 229
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->f(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$6;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/cp;->a(ILjava/util/List;)V

    .line 231
    return-void
.end method
