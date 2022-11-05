.class Lcom/smaato/soma/n$a$2;
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
    .line 228
    iput-object p1, p0, Lcom/smaato/soma/n$a$2;->a:Lcom/smaato/soma/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/smaato/soma/n$a$2$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/n$a$2$1;-><init>(Lcom/smaato/soma/n$a$2;Landroid/content/DialogInterface;)V

    .line 244
    invoke-virtual {v0}, Lcom/smaato/soma/n$a$2$1;->c()Ljava/lang/Object;

    .line 245
    return-void
.end method
