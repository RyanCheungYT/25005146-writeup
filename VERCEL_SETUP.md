# Vercel Deployment Setup Guide

## Environment Variables Configuration

To make your app work on Vercel, you need to configure the following environment variables in the Vercel dashboard:

### Required Environment Variables

1. **SUPABASE_URL**
   - Get this from your Supabase project dashboard
   - Format: `https://your-project-id.supabase.co`
   - Navigate to: Supabase Dashboard → Project Settings → API

2. **SUPABASE_KEY**
   - Get the `anon` `public` key from your Supabase project
   - Navigate to: Supabase Dashboard → Project Settings → API → Project API keys
   - Copy the `anon` `public` key (NOT the `service_role` key)

### Optional Environment Variables

3. **OPENAI_API_KEY** (Optional - for AI note generation)
   - Get this from OpenAI Platform: https://platform.openai.com/api-keys
   - Click "Create new secret key"
   - Copy the key (starts with `sk-...`)
   - Without this key, note generation will use a smart mock generator
   - With this key, you get real AI-powered note generation

4. **GITHUB_TOKEN** (Legacy - Optional)
   - Your GitHub personal access token
   - Kept for backward compatibility

### How to Add Environment Variables in Vercel

1. Go to your Vercel dashboard: https://vercel.com/dashboard
2. Select your project (`note-taking-app-updated-ryan-cheung`)
3. Click on **Settings** tab
4. Click on **Environment Variables** in the left sidebar
5. Add each variable:
   - Enter the variable name (e.g., `SUPABASE_URL`)
   - Enter the value
   - Select which environments to apply it to (Production, Preview, Development)
   - Click **Save**

### After Adding Environment Variables

1. Go to the **Deployments** tab
2. Click the three dots (•••) on the latest deployment
3. Select **Redeploy**
4. Wait for the deployment to complete

Your app should now work correctly with the Supabase database!

## Troubleshooting

### "Supabase credentials not found" Error
- Make sure you've added both `SUPABASE_URL` and `SUPABASE_KEY` to Vercel
- Redeploy the application after adding the variables
- Check that the values are correct (no extra spaces or quotes)

### "Translation libraries not available" Error
- This should be fixed automatically as the libraries are now in requirements.txt
- If the error persists, try redeploying

### Other Issues
- Check the Vercel deployment logs for specific error messages
- Make sure your Supabase database is running and accessible
- Verify that the Supabase URL and Key are correct
