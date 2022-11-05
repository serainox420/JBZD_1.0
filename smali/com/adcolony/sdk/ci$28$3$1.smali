.class Lcom/adcolony/sdk/ci$28$3$1;
.super Lcom/adcolony/sdk/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$28$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ci$28$3;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$28$3;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/adcolony/sdk/ci$28$3$1;->a:Lcom/adcolony/sdk/ci$28$3;

    invoke-direct {p0}, Lcom/adcolony/sdk/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/bn$a;)V
    .locals 3

    .prologue
    .line 352
    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 353
    :goto_0
    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ay()Lcom/adcolony/sdk/ci;

    move-result-object v1

    const-string v2, "Redemption failure"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/ci;->b(Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/ci$28$3$1;->a:Lcom/adcolony/sdk/ci$28$3;

    invoke-virtual {v1, v0, p1}, Lcom/adcolony/sdk/ci$28$3;->a(ZLcom/adcolony/sdk/bn$a;)V

    .line 359
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
