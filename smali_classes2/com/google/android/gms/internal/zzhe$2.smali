.class Lcom/google/android/gms/internal/zzhe$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhe;->zzb(Lcom/google/android/gms/internal/zzhb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzHo:Lcom/google/android/gms/internal/zzhe;

.field final synthetic zzHp:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhe;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe$2;->zzHo:Lcom/google/android/gms/internal/zzhe;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhe$2;->zzHp:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe$2;->zzHo:Lcom/google/android/gms/internal/zzhe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzhe;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public zzfX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhe$2;->zzHo:Lcom/google/android/gms/internal/zzhe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhe$2;->zzHp:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhe;->onClick(Landroid/view/View;)V

    return-void
.end method
