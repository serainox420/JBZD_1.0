.class Lcom/adcolony/sdk/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/c;->b(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/c;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/adcolony/sdk/c$10;->a:Lcom/adcolony/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adcolony/sdk/c$10;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/c;->a(Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/adcolony/sdk/c$10;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/c;->k(Lcom/adcolony/sdk/z;)V

    .line 211
    :cond_0
    return-void
.end method
