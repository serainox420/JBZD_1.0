.class public Lcom/smaato/soma/internal/e/a$a;
.super Landroid/widget/ImageView;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/CloseButtonBitmapFailed;
        }
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$a;->a:Lcom/smaato/soma/internal/e/a;

    .line 240
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v0, Lcom/smaato/soma/internal/e/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/internal/e/a$a$1;-><init>(Lcom/smaato/soma/internal/e/a$a;Lcom/smaato/soma/internal/e/a;)V

    .line 250
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a$a$1;->c()Ljava/lang/Object;

    .line 251
    return-void
.end method
