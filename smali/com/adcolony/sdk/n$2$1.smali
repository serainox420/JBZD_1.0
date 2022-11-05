.class Lcom/adcolony/sdk/n$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/n$2;->a(Lcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/z;

.field final synthetic b:Lcom/adcolony/sdk/n$2;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/n$2;Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/adcolony/sdk/n$2$1;->b:Lcom/adcolony/sdk/n$2;

    iput-object p2, p0, Lcom/adcolony/sdk/n$2$1;->a:Lcom/adcolony/sdk/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adcolony/sdk/n$2$1;->a:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "filepath"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/adcolony/sdk/n$2$1;->b:Lcom/adcolony/sdk/n$2;

    iget-object v1, v1, Lcom/adcolony/sdk/n$2;->a:Lcom/adcolony/sdk/n;

    iget-object v2, p0, Lcom/adcolony/sdk/n$2$1;->a:Lcom/adcolony/sdk/z;

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/n;->a(Lcom/adcolony/sdk/z;Ljava/io/File;)Z

    .line 285
    iget-object v0, p0, Lcom/adcolony/sdk/n$2$1;->b:Lcom/adcolony/sdk/n$2;

    iget-object v0, v0, Lcom/adcolony/sdk/n$2;->a:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->b()V

    .line 286
    return-void
.end method
