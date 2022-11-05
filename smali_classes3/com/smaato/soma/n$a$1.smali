.class Lcom/smaato/soma/n$a$1;
.super Ljava/lang/Object;
.source "FullScreenBanner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/n$a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/n$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/n$a;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/smaato/soma/n$a$1;->a:Lcom/smaato/soma/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/smaato/soma/n$a$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/n$a$1$1;-><init>(Lcom/smaato/soma/n$a$1;)V

    .line 223
    invoke-virtual {v0}, Lcom/smaato/soma/n$a$1$1;->c()Ljava/lang/Object;

    .line 224
    return-void
.end method
