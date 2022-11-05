.class Lcom/smaato/soma/s$14;
.super Ljava/lang/Object;
.source "ToasterBanner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/s;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/s;


# direct methods
.method constructor <init>(Lcom/smaato/soma/s;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smaato/soma/s$14;->a:Lcom/smaato/soma/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/smaato/soma/s$14$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/s$14$1;-><init>(Lcom/smaato/soma/s$14;)V

    .line 100
    invoke-virtual {v0}, Lcom/smaato/soma/s$14$1;->c()Ljava/lang/Object;

    .line 101
    return-void
.end method
