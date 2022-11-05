.class Lcom/apprupt/sdk/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/Messages$Msg;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/Messages;->a:Z

    .line 19
    iput-object p1, p0, Lcom/apprupt/sdk/Messages;->b:Landroid/content/Context;

    .line 20
    return-void
.end method
