.class Lcom/adcolony/sdk/ao$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ao;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ao;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ao;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adcolony/sdk/ao$4;->a:Lcom/adcolony/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/ao$4;->a:Lcom/adcolony/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ao;->m(Lcom/adcolony/sdk/z;)Z

    .line 144
    return-void
.end method
