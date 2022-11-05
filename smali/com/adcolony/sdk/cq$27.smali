.class final Lcom/adcolony/sdk/cq$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->c(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/adcolony/sdk/cq$27;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/cq$27;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    sget-object v1, Lcom/adcolony/sdk/bn;->aj:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/adcolony/sdk/bn;->aj:Ljava/lang/String;

    .line 147
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 148
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bz;->b(Ljava/util/ArrayList;)Z

    .line 152
    :cond_0
    return-void
.end method
