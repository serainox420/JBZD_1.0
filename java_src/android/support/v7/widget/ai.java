package android.support.v7.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: ResourcesWrapper.java */
/* loaded from: classes.dex */
class ai extends Resources {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f868a;

    public ai(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f868a = resources;
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i) throws Resources.NotFoundException {
        return this.f868a.getText(i);
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int i, int i2) throws Resources.NotFoundException {
        return this.f868a.getQuantityText(i, i2);
    }

    @Override // android.content.res.Resources
    public String getString(int i) throws Resources.NotFoundException {
        return this.f868a.getString(i);
    }

    @Override // android.content.res.Resources
    public String getString(int i, Object... objArr) throws Resources.NotFoundException {
        return this.f868a.getString(i, objArr);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i, int i2, Object... objArr) throws Resources.NotFoundException {
        return this.f868a.getQuantityString(i, i2, objArr);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i, int i2) throws Resources.NotFoundException {
        return this.f868a.getQuantityString(i, i2);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i, CharSequence charSequence) {
        return this.f868a.getText(i, charSequence);
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i) throws Resources.NotFoundException {
        return this.f868a.getTextArray(i);
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int i) throws Resources.NotFoundException {
        return this.f868a.getStringArray(i);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i) throws Resources.NotFoundException {
        return this.f868a.getIntArray(i);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int i) throws Resources.NotFoundException {
        return this.f868a.obtainTypedArray(i);
    }

    @Override // android.content.res.Resources
    public float getDimension(int i) throws Resources.NotFoundException {
        return this.f868a.getDimension(i);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i) throws Resources.NotFoundException {
        return this.f868a.getDimensionPixelOffset(i);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i) throws Resources.NotFoundException {
        return this.f868a.getDimensionPixelSize(i);
    }

    @Override // android.content.res.Resources
    public float getFraction(int i, int i2, int i3) {
        return this.f868a.getFraction(i, i2, i3);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        return this.f868a.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i, Resources.Theme theme) throws Resources.NotFoundException {
        return this.f868a.getDrawable(i, theme);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int i, int i2) throws Resources.NotFoundException {
        return this.f868a.getDrawableForDensity(i, i2);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int i, int i2, Resources.Theme theme) {
        return this.f868a.getDrawableForDensity(i, i2, theme);
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int i) throws Resources.NotFoundException {
        return this.f868a.getMovie(i);
    }

    @Override // android.content.res.Resources
    public int getColor(int i) throws Resources.NotFoundException {
        return this.f868a.getColor(i);
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i) throws Resources.NotFoundException {
        return this.f868a.getColorStateList(i);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i) throws Resources.NotFoundException {
        return this.f868a.getBoolean(i);
    }

    @Override // android.content.res.Resources
    public int getInteger(int i) throws Resources.NotFoundException {
        return this.f868a.getInteger(i);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int i) throws Resources.NotFoundException {
        return this.f868a.getLayout(i);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int i) throws Resources.NotFoundException {
        return this.f868a.getAnimation(i);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int i) throws Resources.NotFoundException {
        return this.f868a.getXml(i);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i) throws Resources.NotFoundException {
        return this.f868a.openRawResource(i);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i, TypedValue typedValue) throws Resources.NotFoundException {
        return this.f868a.openRawResource(i, typedValue);
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int i) throws Resources.NotFoundException {
        return this.f868a.openRawResourceFd(i);
    }

    @Override // android.content.res.Resources
    public void getValue(int i, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.f868a.getValue(i, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValueForDensity(int i, int i2, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.f868a.getValueForDensity(i, i2, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.f868a.getValue(str, typedValue, z);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.f868a.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        if (this.f868a != null) {
            this.f868a.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        return this.f868a.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        return this.f868a.getConfiguration();
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        return this.f868a.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public String getResourceName(int i) throws Resources.NotFoundException {
        return this.f868a.getResourceName(i);
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int i) throws Resources.NotFoundException {
        return this.f868a.getResourcePackageName(i);
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int i) throws Resources.NotFoundException {
        return this.f868a.getResourceTypeName(i);
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int i) throws Resources.NotFoundException {
        return this.f868a.getResourceEntryName(i);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.f868a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.f868a.parseBundleExtra(str, attributeSet, bundle);
    }
}
