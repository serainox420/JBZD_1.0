.class Lcom/adcolony/sdk/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/g;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/g;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adcolony/sdk/g$2;->a:Lcom/adcolony/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adcolony/sdk/g$2;->a:Lcom/adcolony/sdk/g;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/g;->a(Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/adcolony/sdk/g$2;->a:Lcom/adcolony/sdk/g;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/g;->d(Lcom/adcolony/sdk/z;)V

    .line 100
    :cond_0
    return-void
.end method
