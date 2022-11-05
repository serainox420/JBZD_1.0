.class Lcom/adcolony/sdk/ci$9$1;
.super Lcom/adcolony/sdk/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ci$9;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ci$9;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ci$9;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/adcolony/sdk/ci$9$1;->a:Lcom/adcolony/sdk/ci$9;

    invoke-direct {p0}, Lcom/adcolony/sdk/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/bn$a;)V
    .locals 2

    .prologue
    .line 686
    iget-object v1, p0, Lcom/adcolony/sdk/ci$9$1;->a:Lcom/adcolony/sdk/ci$9;

    sget-object v0, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/adcolony/sdk/ci$9;->a(ZLcom/adcolony/sdk/bn$a;)V

    .line 687
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
