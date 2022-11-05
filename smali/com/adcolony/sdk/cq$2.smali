.class final Lcom/adcolony/sdk/cq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->e(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/cr;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/cr;I)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adcolony/sdk/cq$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adcolony/sdk/cq$2;->b:Lcom/adcolony/sdk/cr;

    iput p3, p0, Lcom/adcolony/sdk/cq$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/adcolony/sdk/cq;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/cq$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    iget-object v0, p0, Lcom/adcolony/sdk/cq$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/adcolony/sdk/cq$2;->b:Lcom/adcolony/sdk/cr;

    invoke-interface {v1, v0}, Lcom/adcolony/sdk/cr;->a(Ljava/util/Map;)V

    .line 189
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$2;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/cp;->a(ILjava/util/List;)V

    .line 190
    return-void
.end method
