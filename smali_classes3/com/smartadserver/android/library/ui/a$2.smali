.class Lcom/smartadserver/android/library/ui/a$2;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic b:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$2;->b:Lcom/smartadserver/android/library/ui/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a$2;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$2;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1127
    return-void
.end method
