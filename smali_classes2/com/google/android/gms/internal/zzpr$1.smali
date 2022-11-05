.class Lcom/google/android/gms/internal/zzpr$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpr;->zzkU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzXO:I

.field final synthetic zzXP:I

.field final synthetic zzXQ:I

.field final synthetic zzXR:Lcom/google/android/gms/internal/zzpr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXR:Lcom/google/android/gms/internal/zzpr;

    iput p2, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXO:I

    iput p3, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXP:I

    iput p4, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXQ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXO:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpr;->zza(Lcom/google/android/gms/internal/zzpr;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXP:I

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFl:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpr;->zzb(Lcom/google/android/gms/internal/zzpr;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXQ:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzFm:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpr$1;->zzXR:Lcom/google/android/gms/internal/zzpr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpr;->zzc(Lcom/google/android/gms/internal/zzpr;)V

    goto :goto_0
.end method
