.class Lcom/adcolony/sdk/h$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/adcolony/sdk/h$18;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 368
    iget-object v0, p0, Lcom/adcolony/sdk/h$18;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, v1, v1}, Lcom/adcolony/sdk/h;->a(ZZ)Z

    .line 369
    return-void
.end method
