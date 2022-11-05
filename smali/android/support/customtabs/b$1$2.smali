.class Landroid/support/customtabs/b$1$2;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/b$1;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/support/customtabs/b$1;


# direct methods
.method constructor <init>(Landroid/support/customtabs/b$1;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Landroid/support/customtabs/b$1$2;->c:Landroid/support/customtabs/b$1;

    iput-object p2, p0, Landroid/support/customtabs/b$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/customtabs/b$1$2;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/customtabs/b$1$2;->c:Landroid/support/customtabs/b$1;

    iget-object v0, v0, Landroid/support/customtabs/b$1;->a:Landroid/support/customtabs/a;

    iget-object v1, p0, Landroid/support/customtabs/b$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/customtabs/b$1$2;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method
