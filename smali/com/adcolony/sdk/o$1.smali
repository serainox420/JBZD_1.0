.class Lcom/adcolony/sdk/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/o;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/o;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/adcolony/sdk/o$1;->a:Lcom/adcolony/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adcolony/sdk/o$1;->a:Lcom/adcolony/sdk/o;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/o;->a(Lcom/adcolony/sdk/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/adcolony/sdk/o$1;->a:Lcom/adcolony/sdk/o;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/o;->c(Lcom/adcolony/sdk/z;)V

    .line 160
    :cond_0
    return-void
.end method
