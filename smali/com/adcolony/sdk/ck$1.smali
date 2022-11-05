.class Lcom/adcolony/sdk/ck$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ck;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ck;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adcolony/sdk/ck$1;->a:Lcom/adcolony/sdk/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adcolony/sdk/ck$1;->a:Lcom/adcolony/sdk/ck;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ck;->f()Z

    .line 37
    return-void
.end method
