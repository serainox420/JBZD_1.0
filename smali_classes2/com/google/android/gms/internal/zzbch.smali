.class public Lcom/google/android/gms/internal/zzbch;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
