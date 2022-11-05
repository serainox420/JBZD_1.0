.class Lcom/smartadserver/android/library/controller/mraid/a$4;
.super Ljava/lang/Object;
.source "SASMRAIDController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$4;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$4;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->c()V

    .line 441
    return-void
.end method
