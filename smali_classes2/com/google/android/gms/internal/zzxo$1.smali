.class Lcom/google/android/gms/internal/zzxo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxo;-><init>(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatK:Lcom/google/android/gms/internal/zzxo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxo$1;->zzatK:Lcom/google/android/gms/internal/zzxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxo$1;->zzatK:Lcom/google/android/gms/internal/zzxo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxo;->zza(Lcom/google/android/gms/internal/zzxo;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxo$1;->zzatK:Lcom/google/android/gms/internal/zzxo;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzxo;->zzb(Lcom/google/android/gms/internal/zzxo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
