.class Lcom/adcolony/sdk/br$1$1;
.super Lcom/adcolony/sdk/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/br$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/br$1;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/br$1;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adcolony/sdk/br$1$1;->a:Lcom/adcolony/sdk/br$1;

    invoke-direct {p0}, Lcom/adcolony/sdk/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/bn$a;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ax()Lcom/adcolony/sdk/br;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adcolony/sdk/br;->a(Lcom/adcolony/sdk/br;Z)Z

    .line 125
    iget-object v1, p0, Lcom/adcolony/sdk/br$1$1;->a:Lcom/adcolony/sdk/br$1;

    sget-object v2, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0, p1}, Lcom/adcolony/sdk/br$1;->a(ZLcom/adcolony/sdk/bn$a;)V

    .line 126
    return-void
.end method
