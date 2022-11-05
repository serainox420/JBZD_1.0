.class Lcom/adcolony/sdk/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/l;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/l;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/adcolony/sdk/l$1;->a:Lcom/adcolony/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/adcolony/sdk/ADCDownload;

    iget-object v1, p0, Lcom/adcolony/sdk/l$1;->a:Lcom/adcolony/sdk/l;

    invoke-direct {v0, p1, v1}, Lcom/adcolony/sdk/ADCDownload;-><init>(Lcom/adcolony/sdk/z;Lcom/adcolony/sdk/ADCDownload$Listener;)V

    .line 26
    return-void
.end method
